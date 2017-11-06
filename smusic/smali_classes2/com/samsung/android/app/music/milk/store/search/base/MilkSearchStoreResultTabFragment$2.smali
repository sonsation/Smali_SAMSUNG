.class Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment$2;
.super Ljava/lang/Object;
.source "MilkSearchStoreResultTabFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->access$000(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;Z)V

    .line 135
    return-void
.end method

.method public onListActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->access$000(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;Z)V

    .line 130
    return-void
.end method
