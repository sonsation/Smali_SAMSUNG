.class Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;
.super Ljava/lang/Object;
.source "ResizingTextureView.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;


# direct methods
.method private constructor <init>(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;->this$0:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;
    .param p2, "x1"    # Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$1;

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;)V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;->this$0:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->globalLayoutMatrixListenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 382
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;->this$0:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;->this$0:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;

    iget-object v1, v1, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->globalLayoutMatrixListener:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 383
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;->this$0:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;

    invoke-virtual {v0, p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 385
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;->this$0:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->globalLayoutMatrixListenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 386
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 391
    return-void
.end method
