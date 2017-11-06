.class Lcom/samsung/android/app/music/list/local/FolderFragment$FolderCardViewableImpl$1;
.super Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;
.source "FolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/FolderFragment$FolderCardViewableImpl;->onCreateLoader()Landroid/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/list/local/FolderFragment$FolderCardViewableImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/FolderFragment$FolderCardViewableImpl;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/list/local/FolderFragment$FolderCardViewableImpl;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/FolderFragment$FolderCardViewableImpl$1;->this$1:Lcom/samsung/android/app/music/list/local/FolderFragment$FolderCardViewableImpl;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V

    return-void
.end method


# virtual methods
.method protected onForceLoad()V
    .locals 4

    .prologue
    .line 285
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/FolderFragment$FolderCardViewableImpl$1;->this$1:Lcom/samsung/android/app/music/list/local/FolderFragment$FolderCardViewableImpl;

    iget-object v2, v2, Lcom/samsung/android/app/music/list/local/FolderFragment$FolderCardViewableImpl;->this$0:Lcom/samsung/android/app/music/list/local/FolderFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/FolderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 286
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 288
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 289
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/FolderCardViewQueryArgs;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/FolderFragment$FolderCardViewableImpl$1;->this$1:Lcom/samsung/android/app/music/list/local/FolderFragment$FolderCardViewableImpl;

    .line 290
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/FolderFragment$FolderCardViewableImpl;->getCardViewItemCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/FolderCardViewQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/FolderFragment$FolderCardViewableImpl$1;->setQueryArgs(Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V

    .line 293
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->onForceLoad()V

    .line 294
    return-void
.end method
