.class public Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;
.super Ljava/lang/Object;
.source "SmartClipDataExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/SmartClipDataExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebData"
.end annotation


# instance fields
.field public mAppPkgName:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "appPkgName"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    .line 25
    return-void
.end method
