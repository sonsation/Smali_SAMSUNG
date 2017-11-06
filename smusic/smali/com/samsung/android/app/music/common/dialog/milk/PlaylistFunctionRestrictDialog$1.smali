.class Lcom/samsung/android/app/music/common/dialog/milk/PlaylistFunctionRestrictDialog$1;
.super Ljava/lang/Object;
.source "PlaylistFunctionRestrictDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/milk/PlaylistFunctionRestrictDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/milk/PlaylistFunctionRestrictDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/milk/PlaylistFunctionRestrictDialog;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/milk/PlaylistFunctionRestrictDialog;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistFunctionRestrictDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/milk/PlaylistFunctionRestrictDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistFunctionRestrictDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistFunctionRestrictDialog$1;->val$context:Landroid/content/Context;

    const-string v1, "key_playlist_function_restrict_inform"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 26
    return-void
.end method
