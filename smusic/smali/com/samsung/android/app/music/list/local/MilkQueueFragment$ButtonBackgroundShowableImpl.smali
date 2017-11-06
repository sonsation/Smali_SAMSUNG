.class Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ButtonBackgroundShowableImpl;
.super Ljava/lang/Object;
.source "MilkQueueFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/MilkQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonBackgroundShowableImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V
    .locals 0

    .prologue
    .line 947
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ButtonBackgroundShowableImpl;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Lcom/samsung/android/app/music/list/local/MilkQueueFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment$1;

    .prologue
    .line 947
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ButtonBackgroundShowableImpl;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V

    return-void
.end method


# virtual methods
.method public showButtonBackground(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 950
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ButtonBackgroundShowableImpl;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$1300(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 951
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ButtonBackgroundShowableImpl;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .line 952
    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$1300(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f120005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 953
    .local v0, "addTrackShowButton":Landroid/view/View;
    if-nez v0, :cond_0

    .line 954
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ButtonBackgroundShowableImpl;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$1300(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f12052a

    .line 955
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 957
    :cond_0
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 959
    .end local v0    # "addTrackShowButton":Landroid/view/View;
    :cond_1
    return-void

    .line 957
    .restart local v0    # "addTrackShowButton":Landroid/view/View;
    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method
