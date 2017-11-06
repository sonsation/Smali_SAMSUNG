.class Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$2;
.super Ljava/lang/Object;
.source "MDrmTracksFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemCheckedStateChanged()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 182
    return-void
.end method
