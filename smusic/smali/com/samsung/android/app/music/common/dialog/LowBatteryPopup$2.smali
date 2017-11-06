.class Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup$2;
.super Ljava/lang/Object;
.source "LowBatteryPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 77
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup$2;->this$0:Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    .line 80
    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
