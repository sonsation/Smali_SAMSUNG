.class public Lcom/samsung/android/app/music/provider/MilkContents$AllAudio;
.super Ljava/lang/Object;
.source "MilkContents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MilkContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllAudio"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final URI_PATH:Ljava/lang/String; = "milk/audio/media"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 633
    const-string v0, "content://com.sec.android.app.music/milk/audio/media"

    .line 634
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkContents$AllAudio;->CONTENT_URI:Landroid/net/Uri;

    .line 633
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
