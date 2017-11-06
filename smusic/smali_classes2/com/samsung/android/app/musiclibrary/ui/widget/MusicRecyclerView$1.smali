.class Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$1;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;
.source "MusicRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->initImportantForAccessibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 202
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V

    .line 203
    if-nez p2, :cond_0

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setImportantForAccessibility(I)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setImportantForAccessibility(I)V

    goto :goto_0
.end method
