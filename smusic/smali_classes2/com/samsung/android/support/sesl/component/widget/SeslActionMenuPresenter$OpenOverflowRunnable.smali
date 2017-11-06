.class Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "SeslActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;)V
    .locals 0
    .param p2, "popup"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1082
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;

    .line 1083
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1086
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1087
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->changeMenuMode()V

    .line 1089
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1090
    .local v0, "menuView":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;->tryShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1091
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;

    iput-object v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowPopup:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;

    .line 1093
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mPostedOpenRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OpenOverflowRunnable;

    .line 1094
    return-void
.end method
