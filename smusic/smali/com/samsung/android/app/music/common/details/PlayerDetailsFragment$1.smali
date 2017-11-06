.class Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$1;
.super Ljava/lang/Object;
.source "PlayerDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->setLaunchTrackActionByItemClick(IILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;

.field final synthetic val$keyword:Ljava/lang/String;

.field final synthetic val$listType:I

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$1;->this$0:Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;

    iput p2, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$1;->val$listType:I

    iput-object p3, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$1;->val$keyword:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v2, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$1;->this$0:Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 198
    .local v0, "a":Landroid/app/Activity;
    invoke-static {v0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    .line 199
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "args_launch_track_activity"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 200
    const-string v2, "extra_list_type"

    iget v3, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$1;->val$listType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    const-string v2, "extra_key_word"

    iget-object v3, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$1;->val$keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v2, "extra_title"

    iget-object v3, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$1;->val$title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-static {v0, v1}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 204
    return-void
.end method
