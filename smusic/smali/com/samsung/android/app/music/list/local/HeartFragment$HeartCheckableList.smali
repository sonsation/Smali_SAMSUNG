.class Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
.source "HeartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeartCheckableList"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 0
    .param p2, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .prologue
    .line 1410
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    .line 1411
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 1412
    return-void
.end method


# virtual methods
.method protected getCheckedItemAudioIds(Landroid/util/SparseBooleanArray;I)[J
    .locals 2
    .param p1, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p2, "checkedItemCount"    # I

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    .line 1418
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getItemKeywords(Landroid/util/SparseBooleanArray;)[Ljava/lang/String;

    move-result-object v0

    .line 1417
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/common/util/HeartsUtils;->getAudioIds(Landroid/content/Context;[Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method
