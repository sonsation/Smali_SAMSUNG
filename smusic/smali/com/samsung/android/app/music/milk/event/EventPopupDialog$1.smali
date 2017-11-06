.class Lcom/samsung/android/app/music/milk/event/EventPopupDialog$1;
.super Ljava/lang/Object;
.source "EventPopupDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/event/EventPopupDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$1;->this$0:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "checkBox"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 66
    const-string v0, "EventPopupDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCheckedChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$1;->this$0:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->access$002(Lcom/samsung/android/app/music/milk/event/EventPopupDialog;Z)Z

    .line 68
    return-void
.end method
