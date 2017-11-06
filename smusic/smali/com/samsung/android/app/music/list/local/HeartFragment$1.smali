.class Lcom/samsung/android/app/music/list/local/HeartFragment$1;
.super Ljava/lang/Object;
.source "HeartFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/HeartFragment;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiWindowModeChanged(Z)V
    .locals 2
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->access$002(Lcom/samsung/android/app/music/list/local/HeartFragment;Z)Z

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->access$000(Lcom/samsung/android/app/music/list/local/HeartFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->setMultiWindowModeEnabled(Z)V

    .line 161
    return-void
.end method
