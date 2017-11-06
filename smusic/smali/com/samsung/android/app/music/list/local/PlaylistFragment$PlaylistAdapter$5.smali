.class Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$5;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->initViewCompanyInformation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$5;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1117
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$5;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->access$1500(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1118
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1119
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/samsung/android/app/music/common/activity/AboutActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1120
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1121
    return-void
.end method
