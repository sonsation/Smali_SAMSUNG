.class public Lcom/samsung/android/app/music/common/dialog/NotiDialog;
.super Landroid/app/DialogFragment;
.source "NotiDialog.java"


# static fields
.field private static final NOTI_MESSAGE:Ljava/lang/String; = "noti_message"

.field private static final NOTI_TITLE:Ljava/lang/String; = "noti_title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(II)Lcom/samsung/android/app/music/common/dialog/NotiDialog;
    .locals 3
    .param p0, "title"    # I
    .param p1, "message"    # I

    .prologue
    .line 18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 19
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "noti_title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    const-string v2, "noti_message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/NotiDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/dialog/NotiDialog;-><init>()V

    .line 23
    .local v1, "f":Lcom/samsung/android/app/music/common/dialog/NotiDialog;
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/dialog/NotiDialog;->setArguments(Landroid/os/Bundle;)V

    .line 24
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/NotiDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 30
    .local v0, "args":Landroid/os/Bundle;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/NotiDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "noti_title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "noti_message"

    .line 32
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0146

    new-instance v4, Lcom/samsung/android/app/music/common/dialog/NotiDialog$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/common/dialog/NotiDialog$1;-><init>(Lcom/samsung/android/app/music/common/dialog/NotiDialog;)V

    .line 33
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 39
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
