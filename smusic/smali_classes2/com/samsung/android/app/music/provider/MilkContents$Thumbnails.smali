.class public Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;
.super Ljava/lang/Object;
.source "MilkContents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MilkContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Thumbnails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$MilkThumbnail;,
        Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$Album;,
        Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$ThumbnailType;
    }
.end annotation


# static fields
.field public static final MILK_ALBUM:Landroid/net/Uri;

.field public static final MILK_THUMBNAIL:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$Album;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;->MILK_ALBUM:Landroid/net/Uri;

    .line 283
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$MilkThumbnail;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;->MILK_THUMBNAIL:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
