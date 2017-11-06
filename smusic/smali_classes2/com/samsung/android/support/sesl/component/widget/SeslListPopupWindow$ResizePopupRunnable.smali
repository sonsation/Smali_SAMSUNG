.class Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "SeslListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;)V
    .locals 0

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ResizePopupRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1333
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ResizePopupRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ResizePopupRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ResizePopupRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    .line 1338
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ResizePopupRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ResizePopupRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mDropDownList:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    .line 1339
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ResizePopupRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    iget v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mListItemExpandMaximum:I

    if-gt v0, v1, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ResizePopupRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1341
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ResizePopupRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->show()V

    .line 1343
    :cond_0
    return-void
.end method
