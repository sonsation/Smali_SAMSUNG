.class public Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexerCompat;
.super Ljava/lang/Object;
.source "TwCursorIndexerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexerCompat$TwCursorIndexerImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create(Landroid/database/Cursor;I[Ljava/lang/String;I)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "indexColumn"    # I
    .param p2, "indexCharArray"    # [Ljava/lang/String;
    .param p3, "aLangIndex"    # I

    .prologue
    .line 12
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexerCompat$TwCursorIndexerImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexerCompat$TwCursorIndexerImpl;-><init>(Landroid/database/Cursor;I[Ljava/lang/String;I)V

    return-object v0
.end method
