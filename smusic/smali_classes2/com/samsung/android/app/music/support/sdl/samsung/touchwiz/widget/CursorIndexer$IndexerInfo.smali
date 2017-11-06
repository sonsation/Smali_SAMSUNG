.class public Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;
.super Ljava/lang/Object;
.source "CursorIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexerInfo"
.end annotation


# instance fields
.field private mAlangIndex:I

.field private mCursor:Landroid/database/Cursor;

.field private mIndexCharArray:[Ljava/lang/String;

.field private mIndexColumn:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;I[Ljava/lang/String;I)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "indexColumn"    # I
    .param p3, "indexCharArray"    # [Ljava/lang/String;
    .param p4, "alangIndex"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;->mCursor:Landroid/database/Cursor;

    .line 24
    iput p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;->mIndexColumn:I

    .line 25
    iput-object p3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;->mIndexCharArray:[Ljava/lang/String;

    .line 26
    iput p4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;->mAlangIndex:I

    .line 27
    return-void
.end method


# virtual methods
.method public getAlangIndex()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;->mAlangIndex:I

    return v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getIndexCharArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;->mIndexCharArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getIndexColumn()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;->mIndexColumn:I

    return v0
.end method
