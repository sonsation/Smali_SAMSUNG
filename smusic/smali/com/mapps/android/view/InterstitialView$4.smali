.class Lcom/mapps/android/view/InterstitialView$4;
.super Ljava/lang/Object;
.source "InterstitialView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/InterstitialView;->createBtn(Landroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/InterstitialView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$4;->this$0:Lcom/mapps/android/view/InterstitialView;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$4;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView;->access$5(Lcom/mapps/android/view/InterstitialView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$4;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-virtual {v0}, Lcom/mapps/android/view/InterstitialView;->finish()V

    .line 235
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$4;->this$0:Lcom/mapps/android/view/InterstitialView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/mapps/android/view/InterstitialView;->access$6(Lcom/mapps/android/view/InterstitialView;I)V

    .line 231
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$4;->this$0:Lcom/mapps/android/view/InterstitialView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mapps/android/view/InterstitialView;->access$7(Lcom/mapps/android/view/InterstitialView;Z)V

    goto :goto_0
.end method
