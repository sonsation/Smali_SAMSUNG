.class final Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexerCompat$TwCursorIndexerImpl;
.super Ljava/lang/Object;
.source "TwCursorIndexerCompat.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TwCursorIndexerImpl"
.end annotation


# instance fields
.field private final mIndexerInfo:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;

.field private mTwCursorIndexer:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;I[Ljava/lang/String;I)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "indexColumn"    # I
    .param p3, "indexCharArray"    # [Ljava/lang/String;
    .param p4, "aLangIndex"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 23
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;-><init>(Landroid/database/Cursor;I[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexerCompat$TwCursorIndexerImpl;->mTwCursorIndexer:Landroid/database/DataSetObserver;

    .line 30
    :goto_0
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;-><init>(Landroid/database/Cursor;I[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexerCompat$TwCursorIndexerImpl;->mIndexerInfo:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;

    .line 31
    return-void

    .line 26
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;-><init>(Landroid/database/Cursor;I[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexerCompat$TwCursorIndexerImpl;->mTwCursorIndexer:Landroid/database/DataSetObserver;

    goto :goto_0
.end method


# virtual methods
.method public getDataSetObserver()Landroid/database/DataSetObserver;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexerCompat$TwCursorIndexerImpl;->mTwCursorIndexer:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method public getIndexerInfo()Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexerCompat$TwCursorIndexerImpl;->mIndexerInfo:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;

    return-object v0
.end method
