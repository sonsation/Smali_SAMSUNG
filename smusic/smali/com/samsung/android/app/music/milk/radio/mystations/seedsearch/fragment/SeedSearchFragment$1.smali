.class Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$1;
.super Ljava/lang/Object;
.source "SeedSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;

    iput-boolean v1, v0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mIsShowLodingStick:Z

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->internalShowLoading(Z)V

    .line 99
    return-void
.end method