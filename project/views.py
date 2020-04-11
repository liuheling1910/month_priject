from django.shortcuts import render
from .models import *
from django.http import Http404
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger
from django.db.models import Q
from django.shortcuts import reverse,redirect
from django.contrib.auth import login,authenticate,logout
# Create your views here.
def index(request):
    banners = Banner.objects.filter(is_delete=False).all()
    articles = Artical.objects.filter(is_delete=False,is_top=True).all()
    classifs = Classif.objects.filter(is_delete=False).all()
    news = Artical.objects.filter(is_delete=False).all()#最新发布的数据
    commets = Comment.objects.filter(is_delete=False).all()
    commets_art = []
    for com in commets:
        commets_art.append(com.article)
    commets_art = list(set(commets_art))[:5]
    links = Link.objects.filter(is_delete=False).all()
    return render(request,'index.html',locals())



def detail(request,id):
    try:
        article = Artical.objects.get(id=id)

        commets = Comment.objects.filter(is_delete=False).all()
        commets_art = []
        for com in commets:
            commets_art.append(com.article)
        commets_art = list(set(commets_art))[:5]

        recommend=[]
        for tag in article.tag.all():
            recommend.extend(tag.artical_set.all())

        commets = article.comment_set.all()
        return render(request,'show.html',locals())

    except Artical.DoesNotExist:
        raise Http404


def art_list(request):
    cid = request.GET.get('cid')
    tid = request.GET.get('tid')
    kw = request.GET.get('kw')
    if not cid and not tid and not kw:
        articles = Artical.objects.filter(is_delete=False).all()
    elif cid:
        try:
            cat = Classif.objects.get(id=cid)
            articles = cat.artical_set.filter(is_delete=False).all()
        except Classif.DoesNotExist:
            raise Http404
    elif tid:
        try:
            tag = Tag.objects.get(id=tid)
            articles = tag.artical_set.filter(is_delete=False).all()
        except Tag.DoesNotExist:
            raise Http404

    elif kw:
        articles = Artical.objects.filter(is_delete=False).filter(
            Q(title__icontains=kw)|Q(content__icontains=kw)).all()

    try:
        page = request.GET.get('page', 1)
    except PageNotAnInteger:
        page = 1
    # Provide Paginator with the request object for complete querystring generation
    p = Paginator(articles,per_page=1, request=request)
    articles = p.page(page)

    tags = Tag.objects.filter(is_delete=False).all()
    return render(request,'list.html',locals())


def regiset(request):
    if request.method == 'GET':
        return render(request,'register.html')
    else:
        username = request.POST.get('username')
        password = request.POST.get('password')
        password1 = request.POST.get('password1')
        phone = request.POST.get('phone')


        user = User.objects.create_user(
            username = username,
            password = password,
            phone=phone

        )
        if user:
            return redirect(reverse('project:login'))



def blogin(request):
    if request.method == 'GET':
        return render(request,'login.html')
    else:
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(username=username,password=password)
        if user:
            login(request,user)
            return redirect(reverse('project:index'))
        else:
            return redirect(reversed("project:login"))




def blogout(request):
    logout(request)
    return redirect(reverse('project:index'))


from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
@login_required(login_url='/login/')
def comment(request):
    content = request.POST.get('content')
    id = request.POST.get('id')
    try:
        article = Artical.objects.get(id=id)
        Comment.objects.create(
            content=content,
            useer=request.user,
            article=article
        )
        return redirect(reverse('project:detail',kwargs={'id':id}))
    except Artical.DoesNotExist:
        raise Http404







