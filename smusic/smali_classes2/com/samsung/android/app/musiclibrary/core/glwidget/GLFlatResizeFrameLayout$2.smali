.class Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$2;
.super Ljava/lang/Object;
.source "GLFlatResizeFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->invalidateInnerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;->access$300(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$InnerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLFlatResizeFrameLayout$InnerView;->invalidate()V

    .line 296
    return-void
.end method
