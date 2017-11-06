.class Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$IndexVisibleStateChangedListenerWrapper;
.super Ljava/lang/Object;
.source "RecyclerViewFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexVisibleStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndexVisibleStateChangedListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 0

    .prologue
    .line 1282
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$IndexVisibleStateChangedListenerWrapper;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>.IndexVisibleStateChangedListenerWrapper;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$IndexVisibleStateChangedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;

    .prologue
    .line 1282
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$IndexVisibleStateChangedListenerWrapper;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>.IndexVisibleStateChangedListenerWrapper;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$IndexVisibleStateChangedListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    return-void
.end method


# virtual methods
.method public onIndexVisibleStateChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 1287
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$IndexVisibleStateChangedListenerWrapper;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>.IndexVisibleStateChangedListenerWrapper;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$IndexVisibleStateChangedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$2400(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;->notifyStateChanged(Z)V

    .line 1288
    return-void
.end method
