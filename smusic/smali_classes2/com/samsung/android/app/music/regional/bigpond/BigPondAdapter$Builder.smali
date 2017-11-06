.class public Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
.source "BigPondAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder",
        "<",
        "Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mBigPondController:Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;

.field private mBigPondModel:Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "model"    # Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;
    .param p3, "ctrl"    # Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;-><init>(Landroid/app/Fragment;)V

    .line 181
    iput-object p2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$Builder;->mBigPondModel:Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;

    .line 182
    iput-object p3, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$Builder;->mBigPondController:Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;

    .line 183
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;
    .locals 3

    .prologue
    .line 192
    new-instance v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 193
    .local v0, "adapter":Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$Builder;->mBigPondModel:Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$Builder;->mBigPondController:Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->access$000(Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;)V

    .line 194
    return-object v0
.end method

.method public bridge synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$Builder;->build()Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$Builder;
    .locals 0

    .prologue
    .line 187
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$Builder;->self()Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
