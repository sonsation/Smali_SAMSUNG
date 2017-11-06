.class Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistDividerChecker;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaylistDividerChecker"
.end annotation


# instance fields
.field private final mDefaultDividerChecker:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DefaultDividerChecker;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DefaultDividerChecker;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistDividerChecker;->mDefaultDividerChecker:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment$1;

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistDividerChecker;-><init>()V

    return-void
.end method


# virtual methods
.method public drawDivider(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)Z
    .locals 6
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "nextHolder"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 777
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getItemId()J

    move-result-wide v2

    long-to-int v1, v2

    packed-switch v1, :pswitch_data_0

    .line 789
    if-eqz p2, :cond_0

    .line 790
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getItemId()J

    move-result-wide v2

    const-wide/16 v4, -0x3ec

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 791
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getItemId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistDividerChecker;->mDefaultDividerChecker:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;

    .line 792
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;->drawDivider(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    :pswitch_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 777
    :pswitch_data_0
    .packed-switch -0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
