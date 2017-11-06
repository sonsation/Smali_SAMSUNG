.class public Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;
.super Ljava/lang/Object;
.source "RadioResetCustomizeDialDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenreInfo"
.end annotation


# instance fields
.field _id:I

.field mGenreId:Ljava/lang/String;

.field mIsVisible:Z

.field mName:Ljava/lang/String;

.field mOrigIsVisible:Z


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "_id"    # I
    .param p2, "genreId"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "isVisible"    # I

    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    iput p1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;->_id:I

    .line 564
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;->mGenreId:Ljava/lang/String;

    .line 565
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;->mName:Ljava/lang/String;

    .line 566
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;->mIsVisible:Z

    .line 567
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;->mIsVisible:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;->mOrigIsVisible:Z

    .line 568
    return-void

    .line 566
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;->mName:Ljava/lang/String;

    return-object v0
.end method
