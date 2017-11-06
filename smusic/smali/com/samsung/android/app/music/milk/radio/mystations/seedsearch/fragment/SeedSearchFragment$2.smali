.class Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$2;
.super Ljava/lang/Object;
.source "SeedSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->startAutoCompleteSearch(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;

.field final synthetic val$searchText:Ljava/lang/String;

.field final synthetic val$type:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$2;->val$type:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$2;->val$searchText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 287
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v0, "args":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->access$000(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/AutoCompleteSearchLoaderCallbacks;

    move-result-object v1

    .line 291
    .local v1, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<*>;"
    const v2, 0x7f120031

    .line 292
    .local v2, "loaderId":I
    const-string v3, "SEARCH_TYPE"

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$2;->val$type:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v3, "SEARCH_TERM_KEY"

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$2;->val$searchText:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mLoaderManager:Landroid/app/LoaderManager;

    invoke-virtual {v3, v2, v0, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 307
    return-void
.end method
