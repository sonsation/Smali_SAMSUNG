.class Lcom/android/systemui/power/PowerNotificationWarnings$13;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;->showBatteryHealthInterruptionPopUp()V
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
    .param p1, "this$0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$13;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$13;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-set0(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1147
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$13;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get1(Lcom/android/systemui/power/PowerNotificationWarnings;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$13;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get5(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$13;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v1, v1, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionTask:Ljava/lang/Runnable;

    .line 1149
    const-wide/32 v2, 0xea60

    .line 1148
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1144
    :cond_0
    return-void
.end method
