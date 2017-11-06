.class Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder$TitleQueryArgsSpec;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "TitleOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TitleQueryArgsSpec"
.end annotation


# static fields
.field private static final DEFAULT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 124
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder$TitleQueryArgsSpec;->DEFAULT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder$TitleQueryArgsSpec;->uri:Landroid/net/Uri;

    .line 131
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder$TitleQueryArgsSpec;->DEFAULT_PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder$TitleQueryArgsSpec;->projection:[Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder$TitleQueryArgsSpec;->selection:Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder$TitleQueryArgsSpec;->selectionArgs:[Ljava/lang/String;

    .line 134
    const-string/jumbo v0, "title COLLATE LOCALIZED "

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/TitleOrder$TitleQueryArgsSpec;->orderBy:Ljava/lang/String;

    .line 135
    return-void
.end method
