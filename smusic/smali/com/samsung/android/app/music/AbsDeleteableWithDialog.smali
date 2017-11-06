.class public abstract Lcom/samsung/android/app/music/AbsDeleteableWithDialog;
.super Ljava/lang/Object;
.source "AbsDeleteableWithDialog.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/Deleteable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mDeletePopupMessageId:I
    .annotation build Landroid/support/annotation/PluralsRes;
    .end annotation
.end field

.field protected final mFragment:Landroid/app/Fragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 45
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;-><init>(Landroid/app/Activity;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "deletePopupMessageId"    # I
        .annotation build Landroid/support/annotation/PluralsRes;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mActivity:Landroid/app/Activity;

    .line 50
    iput-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mFragment:Landroid/app/Fragment;

    .line 51
    iput-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mFragmentManager:Landroid/app/FragmentManager;

    .line 53
    iput p2, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mDeletePopupMessageId:I

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->initDeleteConfirmDialog()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 58
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;-><init>(Landroid/app/Fragment;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "deletePopupMessageId"    # I
        .annotation build Landroid/support/annotation/PluralsRes;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mActivity:Landroid/app/Activity;

    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mFragment:Landroid/app/Fragment;

    .line 64
    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mFragmentManager:Landroid/app/FragmentManager;

    .line 65
    iput p2, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mDeletePopupMessageId:I

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->initDeleteConfirmDialog()V

    .line 68
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initDeleteConfirmDialog()V
    .locals 4

    .prologue
    .line 75
    iget-object v1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getUserVisibleHint()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mFragmentManager:Landroid/app/FragmentManager;

    sget-object v2, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 79
    .local v0, "fg":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 80
    check-cast v1, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->setDeleteableWithDialog(Lcom/samsung/android/app/music/AbsDeleteableWithDialog;)V

    .line 82
    :cond_1
    const-string v1, "Ui"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " initDeleteConfirmDialog() | DeleteConfirmDialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public deleteItems()V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->getDeleteItemIds()[J

    move-result-object v0

    .line 97
    .local v0, "ids":[J
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->showDeleteConfirmDialog([J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->deleteItemsInternal(Landroid/app/Activity;[J)V

    .line 100
    :cond_0
    return-void
.end method

.method protected abstract deleteItemsInternal(Landroid/app/Activity;[J)V
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected abstract getDeleteItemCount()I
.end method

.method protected abstract getDeleteItemIds()[J
.end method

.method protected getDeletePopupMessageId()I
    .locals 1
    .annotation build Landroid/support/annotation/PluralsRes;
    .end annotation

    .prologue
    .line 123
    iget v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mDeletePopupMessageId:I

    return v0
.end method

.method protected getScreenId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final showDeleteConfirmDialog([J)Z
    .locals 4
    .param p1, "ids"    # [J

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->getDeletePopupMessageId()I

    move-result v1

    .line 104
    .local v1, "deletePopupMessageId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mFragmentManager:Landroid/app/FragmentManager;

    sget-object v3, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mActivity:Landroid/app/Activity;

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->getDeleteItemCount()I

    move-result v3

    invoke-static {v2, v3, p1, v1}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->newInstance(Landroid/content/Context;I[JI)Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    move-result-object v0

    .line 108
    .local v0, "deleteConfirmDialog":Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->setDeleteableWithDialog(Lcom/samsung/android/app/music/AbsDeleteableWithDialog;)V

    .line 109
    iget-object v2, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->mFragmentManager:Landroid/app/FragmentManager;

    sget-object v3, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 111
    .end local v0    # "deleteConfirmDialog":Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;
    :cond_0
    const/4 v2, 0x1

    .line 113
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
