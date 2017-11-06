.class public Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;
.super Landroid/app/DialogFragment;
.source "AbsDeleteableWithDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/AbsDeleteableWithDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteConfirmDialog"
.end annotation


# static fields
.field private static final ARGS_DELETE_ITEM_IDS:Ljava/lang/String; = "args_delete_item_ids"

.field private static final ARGS_STRING_MESSAGE:Ljava/lang/String; = "args_string_message"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mDeleteableWithDialog:Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

.field private final mTabSettingChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const-class v0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 235
    new-instance v0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$3;-><init>(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->mTabSettingChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->mDeleteableWithDialog:Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;I[JI)Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deleteItemCount"    # I
    .param p2, "deleteItemIds"    # [J
    .param p3, "messageId"    # I
        .annotation build Landroid/support/annotation/PluralsRes;
        .end annotation
    .end param

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "message":Ljava/lang/String;
    invoke-static {p2, v0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->newInstance([JLjava/lang/String;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    move-result-object v1

    return-object v1
.end method

.method public static newInstance(Landroid/content/Context;[JI)Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deleteItemIds"    # [J
    .param p2, "messageId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 138
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->newInstance([JLjava/lang/String;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([JLjava/lang/String;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;
    .locals 3
    .param p0, "deleteItemIds"    # [J
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "args_string_message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v2, "args_delete_item_ids"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 153
    new-instance v1, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;-><init>()V

    .line 154
    .local v1, "fg":Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->setArguments(Landroid/os/Bundle;)V

    .line 155
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->mTabSettingChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.android.app.music.TAB_SETTING_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 160
    const-string v6, "Ui"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " onCreateDialog() | savedInstanceState: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p1, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " | parentFragment: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->getParentFragment()Landroid/app/Fragment;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 160
    invoke-static {v6, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 163
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 164
    .local v1, "args":Landroid/os/Bundle;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const-string v5, "args_string_message"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "message":Ljava/lang/String;
    const-string v5, "args_delete_item_ids"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    .line 169
    .local v3, "deleteItemIds":[J
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 170
    const v5, 0x7f0a00f4

    new-instance v6, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;

    invoke-direct {v6, p0, v3}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;-><init>(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;[J)V

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    const v5, 0x7f0a008a

    new-instance v6, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$2;-><init>(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)V

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 204
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 160
    .end local v0    # "a":Landroid/app/Activity;
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "deleteItemIds":[J
    .end local v4    # "message":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->mTabSettingChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 226
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 227
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/PermissionCheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->dismiss()V

    .line 221
    :cond_0
    return-void
.end method

.method public setDeleteableWithDialog(Lcom/samsung/android/app/music/AbsDeleteableWithDialog;)V
    .locals 3
    .param p1, "deleteableWithDialog"    # Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

    .prologue
    .line 230
    const-string v0, "Ui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setDeleteableWithDialog() | deleteableWithDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iput-object p1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->mDeleteableWithDialog:Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

    .line 233
    return-void
.end method
