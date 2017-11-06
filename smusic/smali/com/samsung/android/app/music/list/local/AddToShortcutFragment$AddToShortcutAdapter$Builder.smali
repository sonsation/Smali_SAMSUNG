.class public Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
.source "AddToShortcutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder",
        "<",
        "Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mData1Col:Ljava/lang/String;

.field private mPreviousListId:I

.field private mSubCategoryCol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v0, 0x0

    .line 549
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;-><init>(Landroid/app/Fragment;)V

    .line 542
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->mData1Col:Ljava/lang/String;

    .line 544
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->mSubCategoryCol:Ljava/lang/String;

    .line 550
    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->mData1Col:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->mSubCategoryCol:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;

    .prologue
    .line 541
    iget v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->mPreviousListId:I

    return v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;
    .locals 1

    .prologue
    .line 559
    new-instance v0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;-><init>(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;
    .locals 0

    .prologue
    .line 554
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->self()Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setData1Col(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;
    .locals 1
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->mData1Col:Ljava/lang/String;

    .line 564
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->self()Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPreviousListId(I)Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 568
    iput p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->mPreviousListId:I

    .line 569
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->self()Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSubCategoryCol(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;
    .locals 1
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->mSubCategoryCol:Ljava/lang/String;

    .line 574
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->self()Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
