.class Lcom/android/systemui/power/PowerNotificationWarnings$28;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;->showPowerSupplyingInLowBatteryPopUp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$28;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$28;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-set17(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$28;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get11(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$28;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {v0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->showPowerSupplyingInLowBatteryNotice(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$28;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->-set8(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z

    return-void
.end method
