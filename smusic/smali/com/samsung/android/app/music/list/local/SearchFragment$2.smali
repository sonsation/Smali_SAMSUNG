.class Lcom/samsung/android/app/music/list/local/SearchFragment$2;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/SearchFragment;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->updateMatchedColor(I)V

    .line 234
    return-void
.end method