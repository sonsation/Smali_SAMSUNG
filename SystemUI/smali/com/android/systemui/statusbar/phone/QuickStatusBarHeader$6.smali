.class Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$6;
.super Landroid/os/AsyncTask;
.source "QuickStatusBarHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateSettingsBadgeCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    .prologue
    .line 922
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$6;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$6;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    const/4 v1, 0x0

    return-object v1

    .line 928
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$6;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-get2(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->getSettingsBadgeCount(Landroid/content/Context;)I

    move-result v0

    .line 929
    .local v0, "badgeCount":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 924
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 934
    const-string/jumbo v0, "QuickStatusBarHeader"

    const-string/jumbo v1, "updateSettingsBadgeCount Cancelled, due to intent received."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "badgeCount"    # Ljava/lang/Integer;

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$6;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-get7(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 940
    const-string/jumbo v0, "QuickStatusBarHeader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSettingsBadgeCount   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$6;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-get7(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$6;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-set1(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;I)I

    .line 942
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$6;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateBadgeState()V

    .line 938
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "badgeCount"    # Ljava/lang/Object;

    .prologue
    .line 938
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "badgeCount":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$6;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
