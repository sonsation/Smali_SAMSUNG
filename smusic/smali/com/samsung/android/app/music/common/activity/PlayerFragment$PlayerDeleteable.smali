.class Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerDeleteable;
.super Lcom/samsung/android/app/music/AbsDeleteableWithDialog;
.source "PlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/PlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerDeleteable"
.end annotation


# instance fields
.field private final mDeletePopupMessageId:I
    .annotation build Landroid/support/annotation/PluralsRes;
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;Landroid/app/Fragment;I)V
    .locals 0
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "deletePopupMessageId"    # I
        .annotation build Landroid/support/annotation/PluralsRes;
        .end annotation
    .end param

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerDeleteable;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .line 1326
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;-><init>(Landroid/app/Fragment;)V

    .line 1327
    iput p3, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerDeleteable;->mDeletePopupMessageId:I

    .line 1328
    return-void
.end method


# virtual methods
.method protected deleteItemsInternal(Landroid/app/Activity;[J)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ids"    # [J

    .prologue
    const/4 v6, 0x0

    .line 1347
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerDeleteable;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [J

    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerDeleteable;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$1800(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)J

    move-result-wide v4

    aput-wide v4, v2, v6

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers;->ALL:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;-><init>(Landroid/app/Activity;[JLcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;Z)V

    new-array v1, v6, [Ljava/lang/Void;

    .line 1348
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/task/DeleteItemTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1349
    return-void
.end method

.method protected getDeleteItemCount()I
    .locals 1

    .prologue
    .line 1342
    const/4 v0, 0x1

    return v0
.end method

.method protected getDeleteItemIds()[J
    .locals 4

    .prologue
    .line 1337
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerDeleteable;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$1800(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public getDeletePopupMessageId()I
    .locals 1

    .prologue
    .line 1332
    iget v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerDeleteable;->mDeletePopupMessageId:I

    return v0
.end method
