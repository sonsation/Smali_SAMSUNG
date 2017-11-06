.class final Lcom/samsung/android/app/music/support/android/widget/CursorIndexerCompat$SepCursorIndexerImpl;
.super Ljava/lang/Object;
.source "CursorIndexerCompat.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/android/widget/CursorIndexerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SepCursorIndexerImpl"
.end annotation


# instance fields
.field private final mIndexerInfo:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;

.field private final mSemCursorIndexer:Lcom/samsung/android/widget/SemCursorIndexer;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;I[Ljava/lang/String;I)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "indexColumn"    # I
    .param p3, "indexCharArray"    # [Ljava/lang/String;
    .param p4, "aLangIndex"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/samsung/android/widget/SemCursorIndexer;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemCursorIndexer;-><init>(Landroid/database/Cursor;I[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/widget/CursorIndexerCompat$SepCursorIndexerImpl;->mSemCursorIndexer:Lcom/samsung/android/widget/SemCursorIndexer;

    .line 35
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;-><init>(Landroid/database/Cursor;I[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/widget/CursorIndexerCompat$SepCursorIndexerImpl;->mIndexerInfo:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;

    .line 36
    return-void
.end method


# virtual methods
.method public getDataSetObserver()Landroid/database/DataSetObserver;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/widget/CursorIndexerCompat$SepCursorIndexerImpl;->mSemCursorIndexer:Lcom/samsung/android/widget/SemCursorIndexer;

    return-object v0
.end method

.method public getIndexerInfo()Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/widget/CursorIndexerCompat$SepCursorIndexerImpl;->mIndexerInfo:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer$IndexerInfo;

    return-object v0
.end method
