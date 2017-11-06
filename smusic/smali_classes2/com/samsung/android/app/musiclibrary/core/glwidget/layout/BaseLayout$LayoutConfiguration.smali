.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$LayoutConfiguration;
.super Ljava/lang/Object;
.source "BaseLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LayoutConfiguration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Config:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;)V
    .locals 0
    .param p1, "parent"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    .prologue
    .line 285
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$LayoutConfiguration;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$LayoutConfiguration<TConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$LayoutConfiguration;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    .line 287
    return-void
.end method


# virtual methods
.method protected reallign()V
    .locals 3

    .prologue
    .line 290
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$LayoutConfiguration;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$LayoutConfiguration<TConfig;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$LayoutConfiguration;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$LayoutConfiguration;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mWidth:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$LayoutConfiguration;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->realign(II)V

    .line 291
    return-void
.end method
