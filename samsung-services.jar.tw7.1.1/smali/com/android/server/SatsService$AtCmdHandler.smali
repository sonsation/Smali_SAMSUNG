.class public final Lcom/android/server/SatsService$AtCmdHandler;
.super Ljava/lang/Object;
.source "SatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AtCmdHandler"
.end annotation


# static fields
.field private static final AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final AT_RESPONSE_END:Ljava/lang/String; = "\r\n\r\nOK\r\n"

.field private static final AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG (INVALID PARAM)"

.field private static final AT_RESPONSE_NA:Ljava/lang/String; = "NA"

.field private static final AT_RESPONSE_START:Ljava/lang/String; = "\r\n"

.field private static final THREAD_SUFFIX_UART:Ljava/lang/String; = "At"

.field private static final THREAD_SUFFIX_USB:Ljava/lang/String; = "Data"

.field private static final UART_SOCKET_NAME:Ljava/lang/String; = "SatsService"

.field private static final USB_SOCKET_NAME:Ljava/lang/String; = "/data/.socket_stream"


# instance fields
.field private THREAD_TAG:Ljava/lang/String;

.field private mGettedBuffer:Z

.field private mLocalSocket:Landroid/net/LocalSocket;

.field private mLocalSocketAddress:Landroid/net/LocalSocketAddress;

.field final synthetic this$0:Lcom/android/server/SatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/SatsService;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/SatsService;
    .param p2, "connectTarget"    # I

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/server/SatsService$AtCmdHandler;->this$0:Lcom/android/server/SatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocketAddress:Landroid/net/LocalSocketAddress;

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->mGettedBuffer:Z

    .line 167
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    .line 168
    const-string v0, "SatsService"

    const-string v1, "AtCmdHandler called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0, p2}, Lcom/android/server/SatsService$AtCmdHandler;->selectTarget(I)V

    .line 166
    return-void
.end method

.method private doWork(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "atCmd":Lcom/android/server/IWorkOnAt;
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 330
    .local v4, "responseDo":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 332
    .local v1, "cmdResponse":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/SatsService$AtCmdHandler;->this$0:Lcom/android/server/SatsService;

    invoke-static {v5}, Lcom/android/server/SatsService;->-get4(Lcom/android/server/SatsService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 334
    .end local v0    # "atCmd":Lcom/android/server/IWorkOnAt;
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/IWorkOnAt;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 335
    const-string v5, "SatsService"

    const-string v6, "doWork: iterator: "

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IWorkOnAt;

    .line 337
    .local v0, "atCmd":Lcom/android/server/IWorkOnAt;
    invoke-interface {v0}, Lcom/android/server/IWorkOnAt;->getCmd()Ljava/lang/String;

    move-result-object v1

    .line 338
    const-string v5, "SatsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doWork: cmdResponse "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v5, "+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string v6, "="

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 341
    iget-object v5, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string v6, "SatsServiceData"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 344
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 347
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const-string v7, "="

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 354
    :goto_1
    const-string v5, "SatsService"

    const-string v6, "doWork: cmdResponse is equal to cmd."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/android/server/IWorkOnAt;->processCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n\r\nOK\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 364
    .end local v0    # "atCmd":Lcom/android/server/IWorkOnAt;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 365
    const-string v5, "SatsService"

    const-string v6, "doWork: no such service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "NG (INVALID PARAM)\r\n\r\nOK\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 369
    :cond_2
    return-object v4

    .line 349
    .restart local v0    # "atCmd":Lcom/android/server/IWorkOnAt;
    :catch_0
    move-exception v2

    .line 350
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "NG (INVALID PARAM)\r\n\r\nOK\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 360
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v5, "SatsService"

    const-string v6, "doWork: cmd not in list"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isValidCommand(Ljava/lang/String;)Z
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 296
    if-nez p1, :cond_0

    .line 297
    iget-object v3, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string v4, "error: cmd = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return v6

    .line 302
    :cond_0
    :try_start_0
    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "AT"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 304
    iget-object v3, p0, Lcom/android/server/SatsService$AtCmdHandler;->this$0:Lcom/android/server/SatsService;

    invoke-static {v3}, Lcom/android/server/SatsService;->-get0(Lcom/android/server/SatsService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 305
    .local v0, "cmdListIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 306
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 307
    .local v1, "command":Ljava/lang/String;
    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    iget-object v3, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidCommand: cmd is true. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v3, 0x1

    return v3

    .line 312
    .end local v1    # "command":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidCommand: cmd is not in list. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return v6

    .line 316
    .end local v0    # "cmdListIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    iget-object v3, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidCmd: cmd is false. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    return v6

    .line 320
    :catch_0
    move-exception v2

    .line 321
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    return v6
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 195
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    if-nez v8, :cond_1

    .line 196
    new-instance v8, Landroid/net/LocalSocket;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Landroid/net/LocalSocket;-><init>(I)V

    iput-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    .line 199
    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    iget-object v9, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocketAddress:Landroid/net/LocalSocketAddress;

    invoke-virtual {v8, v9}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    :goto_1
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 206
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string v9, "Connected to daemon."

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 209
    .local v2, "bw":Ljava/io/BufferedWriter;
    const-string v7, ""

    .line 212
    .local v7, "strIncome":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 213
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    iget-object v9, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 214
    .local v3, "bw":Ljava/io/BufferedWriter;
    const/4 v8, 0x1

    :try_start_3
    iput-boolean v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mGettedBuffer:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .end local v2    # "bw":Ljava/io/BufferedWriter;
    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .local v2, "bw":Ljava/io/BufferedWriter;
    move-object v0, v1

    .line 221
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    :cond_2
    :goto_2
    iget-boolean v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mGettedBuffer:Z

    if-eqz v8, :cond_0

    .line 223
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 225
    if-eqz v7, :cond_4

    .line 228
    invoke-direct {p0, v7}, Lcom/android/server/SatsService$AtCmdHandler;->isValidCommand(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 229
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "command_0: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0, v7}, Lcom/android/server/SatsService$AtCmdHandler;->doWork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, "response":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 233
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "command_1:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Response:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 256
    .end local v6    # "response":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 257
    .local v4, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Socket seems be closed - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iput-boolean v12, p0, Lcom/android/server/SatsService$AtCmdHandler;->mGettedBuffer:Z

    .line 260
    :try_start_5
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 261
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 262
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V

    .line 263
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string v9, "Closed socket."

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 269
    :goto_3
    iput-object v11, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    goto/16 :goto_2

    .line 201
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "strIncome":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 202
    .restart local v4    # "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to connect daemon - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 216
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "bw":Ljava/io/BufferedWriter;
    .restart local v7    # "strIncome":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 217
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_4
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get input/output stream - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput-boolean v12, p0, Lcom/android/server/SatsService$AtCmdHandler;->mGettedBuffer:Z

    goto/16 :goto_2

    .line 238
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_6
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string v9, "SatsServiceData"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 239
    const-string v6, "NA"

    .line 240
    .restart local v6    # "response":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 242
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Command:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Response:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 247
    .end local v6    # "response":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string v9, "Socket seems be closed."

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mGettedBuffer:Z

    .line 249
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 250
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 251
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V

    .line 252
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 265
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 266
    .local v5, "ioe":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 275
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v7    # "strIncome":Ljava/lang/String;
    :cond_5
    const-wide/16 v8, 0x1388

    :try_start_7
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 277
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string v9, "SatsServiceAt"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 278
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string v9, "Wait until JIG is inserted."

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->this$0:Lcom/android/server/SatsService;

    invoke-static {v8}, Lcom/android/server/SatsService;->-get2(Lcom/android/server/SatsService;)Ljava/lang/Thread;

    move-result-object v9

    monitor-enter v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 280
    :goto_5
    :try_start_8
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->this$0:Lcom/android/server/SatsService;

    invoke-static {v8}, Lcom/android/server/SatsService;->-get3(Lcom/android/server/SatsService;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 281
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->this$0:Lcom/android/server/SatsService;

    invoke-static {v8}, Lcom/android/server/SatsService;->-get2(Lcom/android/server/SatsService;)Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->wait()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 279
    :catchall_0
    move-exception v8

    :try_start_9
    monitor-exit v9

    throw v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 285
    :catch_4
    move-exception v4

    .line 286
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_a
    monitor-exit v9
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 216
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v7    # "strIncome":Ljava/lang/String;
    :catch_5
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    :catch_6
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .local v2, "bw":Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4
.end method

.method public selectTarget(I)V
    .locals 3
    .param p1, "connectTarget"    # I

    .prologue
    .line 173
    packed-switch p1, :pswitch_data_0

    .line 187
    const-string v0, "SatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid target : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    return-void

    .line 175
    :pswitch_0
    const-string v0, "SatsService"

    const-string v1, "connect at distributor"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v1, "SatsService"

    .line 177
    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    .line 176
    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocketAddress:Landroid/net/LocalSocketAddress;

    .line 178
    const-string v0, "SatsServiceAt"

    iput-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    goto :goto_0

    .line 181
    :pswitch_1
    const-string v0, "SatsService"

    const-string v1, "connect data distributor"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v1, "/data/.socket_stream"

    .line 183
    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    .line 182
    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocketAddress:Landroid/net/LocalSocketAddress;

    .line 184
    const-string v0, "SatsServiceData"

    iput-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
