.class Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistShareable;
.super Lcom/samsung/android/app/music/list/ListShareableImpl;
.source "PlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaylistShareable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 1590
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistShareable;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    .line 1591
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/app/Fragment;)V

    .line 1592
    return-void
.end method


# virtual methods
.method protected shareInternal(Landroid/content/Context;[JLjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ids"    # [J
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "bixbyCrossSharePackages"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1597
    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_2

    .line 1598
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistShareable;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getCheckedItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const v0, 0x7f0a020f

    .line 1601
    .local v0, "stringResId":I
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1602
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1603
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistShareable;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->finishActionMode()V

    .line 1607
    .end local v0    # "stringResId":I
    :goto_1
    return-void

    .line 1598
    :cond_1
    const v0, 0x7f0a0216

    goto :goto_0

    .line 1605
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/ListShareableImpl;->shareInternal(Landroid/content/Context;[JLjava/lang/String;)V

    goto :goto_1
.end method
