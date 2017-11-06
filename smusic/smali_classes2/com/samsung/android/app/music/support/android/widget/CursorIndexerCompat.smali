.class public Lcom/samsung/android/app/music/support/android/widget/CursorIndexerCompat;
.super Ljava/lang/Object;
.source "CursorIndexerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/android/widget/CursorIndexerCompat$SepCursorIndexerImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create(Landroid/database/Cursor;I[Ljava/lang/String;I)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "indexColumn"    # I
    .param p2, "indexCharArray"    # [Ljava/lang/String;
    .param p3, "aLangIndex"    # I

    .prologue
    .line 16
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_0

    .line 17
    new-instance v0, Lcom/samsung/android/app/music/support/android/widget/CursorIndexerCompat$SepCursorIndexerImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/support/android/widget/CursorIndexerCompat$SepCursorIndexerImpl;-><init>(Landroid/database/Cursor;I[Ljava/lang/String;I)V

    .line 23
    .local v0, "cursorIndexer":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;
    :goto_0
    return-object v0

    .line 21
    .end local v0    # "cursorIndexer":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexerCompat;->create(Landroid/database/Cursor;I[Ljava/lang/String;I)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;

    move-result-object v0

    .restart local v0    # "cursorIndexer":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;
    goto :goto_0
.end method
