.class Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;
.super Ljava/lang/Object;
.source "FileMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Chain"
.end annotation


# instance fields
.field private final mMatcher:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;

.field private final mNext:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;)V
    .locals 0
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;
    .param p2, "next"    # Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;->mMatcher:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;

    .line 41
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;->mNext:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;

    .line 42
    return-void
.end method


# virtual methods
.method getMatched(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "songFilePath"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;

    .prologue
    .line 45
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;->mMatcher:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;->matches(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "matchedFile":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Chain : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "matchedFile":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 52
    .restart local v2    # "matchedFile":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getMatched getting exception"

    invoke-static {v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;->mNext:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;

    if-eqz v3, :cond_1

    .line 56
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;->mNext:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;->getMatched(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 58
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method
