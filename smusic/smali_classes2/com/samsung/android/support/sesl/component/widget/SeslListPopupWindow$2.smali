.class Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$2;
.super Ljava/lang/Object;
.source "SeslListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1142
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .line 1143
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1144
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->show()V

    .line 1146
    :cond_0
    return-void
.end method
