.class Lcom/samsung/android/settings/DataSlotChoice$4;
.super Ljava/lang/Object;
.source "DataSlotChoice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/DataSlotChoice;->onRoamingDisplayMobileDataOnAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DataSlotChoice;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DataSlotChoice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/DataSlotChoice;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/samsung/android/settings/DataSlotChoice$4;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice$4;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v0}, Lcom/samsung/android/settings/DataSlotChoice;->-wrap0(Lcom/samsung/android/settings/DataSlotChoice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice$4;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v0}, Lcom/samsung/android/settings/DataSlotChoice;->-get3(Lcom/samsung/android/settings/DataSlotChoice;)Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    .line 455
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice$4;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v0}, Lcom/samsung/android/settings/DataSlotChoice;->-get3(Lcom/samsung/android/settings/DataSlotChoice;)Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
