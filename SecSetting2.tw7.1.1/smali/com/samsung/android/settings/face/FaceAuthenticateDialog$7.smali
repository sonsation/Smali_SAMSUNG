.class Lcom/samsung/android/settings/face/FaceAuthenticateDialog$7;
.super Ljava/lang/Object;
.source "FaceAuthenticateDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->setEditBoxListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$7;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 445
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 446
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$7;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-wrap8(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    .line 449
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 451
    :cond_1
    return v1
.end method
