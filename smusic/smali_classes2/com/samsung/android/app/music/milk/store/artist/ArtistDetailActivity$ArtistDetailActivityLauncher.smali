.class public final Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity$ArtistDetailActivityLauncher;
.super Ljava/lang/Object;
.source "ArtistDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArtistDetailActivityLauncher"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final startActivity(Landroid/app/Activity;J)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "artistId"    # J

    .prologue
    .line 735
    .line 736
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Artist;->getSourceId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 737
    .local v1, "sourceArtistId":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 738
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "contentId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 740
    return-void
.end method

.method public static final startActivityForResult(Landroid/app/Activity;JI)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "artistId"    # J
    .param p3, "requestCode"    # I

    .prologue
    .line 744
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 745
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "contentId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 746
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 747
    return-void
.end method
