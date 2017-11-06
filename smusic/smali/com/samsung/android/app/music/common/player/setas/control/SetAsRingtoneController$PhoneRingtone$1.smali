.class Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;
.super Ljava/lang/Object;
.source "SetAsRingtoneController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone;->showSimChooserDialog(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$highlightOffset:I

.field final synthetic val$listener:Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone;Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;->val$uri:Landroid/net/Uri;

    iput p4, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;->val$highlightOffset:I

    iput-object p5, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;->val$listener:Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "optionPopupDialogId"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 180
    invoke-static {}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimChooserDialog - onClick() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone;

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;->val$uri:Landroid/net/Uri;

    iget v4, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;->val$highlightOffset:I

    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone;->access$600(Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone;ILandroid/content/Context;Landroid/net/Uri;I)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;->val$listener:Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;->val$listener:Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;->onComplete()V

    .line 186
    :cond_0
    return-void

    .line 181
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
