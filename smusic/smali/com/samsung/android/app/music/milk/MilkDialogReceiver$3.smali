.class Lcom/samsung/android/app/music/milk/MilkDialogReceiver$3;
.super Ljava/lang/Object;
.source "MilkDialogReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->handleMessage(Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$3;->this$0:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 162
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 163
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$3;->this$0:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->access$100(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$3;->this$0:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->access$100(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 166
    return-void
.end method
