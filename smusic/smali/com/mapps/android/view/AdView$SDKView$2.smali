.class Lcom/mapps/android/view/AdView$SDKView$2;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView$SDKView;->setSDKImageDraw(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/AdView$SDKView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView$SDKView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKView$2;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    .line 1983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 1987
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView$2;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKView;->access$0(Lcom/mapps/android/view/AdView$SDKView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1992
    :goto_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView$2;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKView;->access$1(Lcom/mapps/android/view/AdView$SDKView;)V

    .line 1993
    return-void

    .line 1990
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView$2;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKView;->access$0(Lcom/mapps/android/view/AdView$SDKView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
