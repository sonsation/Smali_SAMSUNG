.class Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;
.super Ljava/lang/Object;
.source "MediaServerResponder2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Header"
.end annotation


# instance fields
.field final get:Ljava/lang/String;

.field final range:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "get"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;

    .prologue
    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;->get:Ljava/lang/String;

    .line 497
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServerResponder2$Header;->range:Ljava/lang/String;

    .line 498
    return-void
.end method
