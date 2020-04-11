from django.db import models
from DjangoUeditor.models import UEditorField
from django.contrib.auth.models import AbstractUser
# Create your models here.

class Base(models.Model):
    created_time = models.DateTimeField(auto_now_add=True)
    updated_time = models.DateTimeField(auto_now=True)
    is_delete = models.BooleanField(default=False)
    class Meta():
        abstract = True


class User(AbstractUser):
    phone = models.CharField(verbose_name='手机号',max_length=11)



class Banner(Base):
    title = models.CharField(verbose_name='标题',max_length=10)
    cover = models.ImageField(verbose_name='图片',upload_to='banner/%Y/%m/%d')
    link = models.URLField(verbose_name='跳转链接')
    position = models.IntegerField(verbose_name='排序',default=0)
    def __str__(self):
        return self.title
    class Meta:
        ordering = ['position']
        verbose_name = '轮播图'
        verbose_name_plural = verbose_name



class Classif(Base):
    name = models.CharField(verbose_name='标题',max_length=10)
    position = models.IntegerField(verbose_name='排序',default=0)
    def __str__(self):
        return self.name
    class Meta():
        ordering = ['position']
        verbose_name = '分类'
        verbose_name_plural = verbose_name
        #class是将表的名字汉化，def是将表中的表格汉化


class Tag(Base):
    name = models.CharField(verbose_name='标签名字',max_length=10)
    position = models.IntegerField(verbose_name='排序',default=0)
    def __str__(self):
        return self.name
    class Meta():
        ordering = ['position']
        verbose_name = '标签'
        verbose_name_plural = verbose_name


class Link(Base):
    name = models.CharField(verbose_name='链接名',max_length=20)
    link = models.URLField(verbose_name='跳转地址')
    position = models.IntegerField(verbose_name='排序',default=0)

    def __str__(self):
        return self.name
    class Meta():
        ordering = ['position']
        verbose_name = '友情链接'
        verbose_name_plural = verbose_name

class Artical(Base):
    title = models.CharField(verbose_name='文章标题',max_length=10)
    content = UEditorField(width=600, height=300, toolbars="full",
                           imagePath="news/%(basename)s_%(datetime)s.%(extname)s", filePath="files/")
    introduce = models.CharField(verbose_name='内容简介',max_length=100)
    cover = models.ImageField(verbose_name='图片',upload_to='article/%Y/%m/%d')
    see = models.IntegerField(verbose_name='浏览量',default=0)
    is_top = models.BooleanField(verbose_name='是否置顶',default=False)
    classif = models.ForeignKey(to=Classif,on_delete=models.CASCADE)
    tag = models.ManyToManyField(to=Tag)
    user = models.ForeignKey(to=User,on_delete=models.CASCADE)
    def __str__(self):
        return self.title
    class Meta():
        ordering = ['-created_time']
        verbose_name = '文章'
        verbose_name_plural = verbose_name


class Comment(Base):
    content = models.CharField(verbose_name='评论内容',max_length=300)
    useer = models.ForeignKey(to=User,on_delete=models.CASCADE)
    article = models.ForeignKey(to=Artical,on_delete=models.CASCADE)
    def __str__(self):
        return self.content
    class Meta():
        ordering = ['-created_time']
        verbose_name = '评论'
        verbose_name_plural = verbose_name







