.class Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment$1;
.super Ljava/lang/Object;
.source "ArtistFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 100
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "6026"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;

    .line 103
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->access$100(Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;

    invoke-virtual {v3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistDetailFragment;->newInstance(JJ)Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistDetailFragment;

    move-result-object v0

    .line 104
    .local v0, "fg":Landroid/app/Fragment;
    const v2, 0x100003

    .line 105
    .local v2, "listType":I
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 106
    .local v1, "ft":Landroid/app/FragmentTransaction;
    const v3, 0x1020011

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v0, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 107
    const/16 v3, 0x1001

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 108
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 109
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 110
    return-void
.end method
