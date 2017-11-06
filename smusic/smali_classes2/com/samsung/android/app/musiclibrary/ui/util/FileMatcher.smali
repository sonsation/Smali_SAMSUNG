.class public Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;
.super Ljava/lang/Object;
.source "FileMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;,
        Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mRootChain:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;)V
    .locals 0
    .param p1, "rootChain"    # Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->mRootChain:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;

    .line 22
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static varargs obtain([Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;)Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;
    .locals 5
    .param p0, "chains"    # [Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;

    .prologue
    .line 13
    const/4 v1, 0x0

    .line 14
    .local v1, "prevChain":Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;
    array-length v4, p0

    const/4 v3, 0x0

    move-object v2, v1

    .end local v1    # "prevChain":Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;
    .local v2, "prevChain":Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p0, v3

    .line 15
    .local v0, "m":Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;-><init>(Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;)V

    .line 14
    .end local v2    # "prevChain":Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;
    .restart local v1    # "prevChain":Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;
    add-int/lit8 v3, v3, 0x1

    move-object v2, v1

    .end local v1    # "prevChain":Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;
    .restart local v2    # "prevChain":Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;
    goto :goto_0

    .line 17
    .end local v0    # "m":Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;
    :cond_0
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;-><init>(Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;)V

    return-object v3
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "songFilePath"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->matches(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public matches(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "songFilePath"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;

    .prologue
    .line 25
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->mRootChain:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;->getMatched(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "matchedFilePath":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result song path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", matched file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-object v0
.end method
