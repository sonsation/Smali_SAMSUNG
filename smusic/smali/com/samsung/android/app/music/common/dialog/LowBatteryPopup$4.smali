.class Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup$4;
.super Ljava/lang/Object;
.source "LowBatteryPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->showLowBatteryMsg(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup$4;->this$0:Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup$4;->this$0:Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->access$100(Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup$4;->this$0:Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->access$200(Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;)V

    .line 99
    return-void
.end method
