.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapterWrap;
.super Ljava/lang/Object;
.source "GLHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetAdapterWrap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

.field private final wrap:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Z)V
    .locals 0
    .param p2, "wrap"    # Z

    .prologue
    .line 798
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapterWrap;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 802
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapterWrap;->wrap:Z

    .line 803
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapterWrap;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapterWrap;->wrap:Z

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$1002(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Z)Z

    .line 812
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapterWrap;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapterWrap;->wrap:Z

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->setAdapterWrap(Z)V

    .line 813
    return-void
.end method
