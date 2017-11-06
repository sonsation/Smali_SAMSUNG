.class Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$1;
.super Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DefaultDividerChecker;
.source "AddToShortcutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DefaultDividerChecker;-><init>()V

    return-void
.end method


# virtual methods
.method public drawDivider(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "nextHolder"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getItemId()J

    move-result-wide v0

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_0

    .line 120
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DefaultDividerChecker;->drawDivider(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)Z

    move-result v0

    :goto_0
    return v0

    .line 118
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
