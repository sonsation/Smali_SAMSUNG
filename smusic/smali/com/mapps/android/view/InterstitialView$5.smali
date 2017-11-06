.class Lcom/mapps/android/view/InterstitialView$5;
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
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$5;->this$0:Lcom/mapps/android/view/InterstitialView;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$5;->this$0:Lcom/mapps/android/view/InterstitialView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mapps/android/view/InterstitialView;->access$6(Lcom/mapps/android/view/InterstitialView;I)V

    .line 242
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$5;->this$0:Lcom/mapps/android/view/InterstitialView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mapps/android/view/InterstitialView;->access$7(Lcom/mapps/android/view/InterstitialView;Z)V

    .line 244
    return-void
.end method
